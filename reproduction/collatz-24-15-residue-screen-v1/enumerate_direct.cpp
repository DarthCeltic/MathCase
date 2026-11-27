#include <cstdint>
#include <iostream>
#include <vector>
#include <chrono>
static constexpr uint32_t J=24,HMAX=15;
static constexpr uint64_t MOD=(uint64_t{1}<<J);
struct Row { uint64_t count=0; bool have=false; uint64_t margin=0,start=0,residue=0,endpoint=0,coeff=0,intercept=0; };
static uint64_t pow3(unsigned h) { uint64_t x=1; while(h--) x*=3; return x; }
static std::pair<uint64_t,unsigned> advance(uint64_t x,unsigned steps) {
 unsigned h=0;
 for(unsigned i=0;i<steps;i++) { if(x&1) { x=(3*x+1)/2; ++h; } else x/=2; }
 return {x,h};
}
int main() {
 auto t0=std::chrono::steady_clock::now(); std::vector<Row> rows(HMAX+1);
 for(uint64_t r=0;r<MOD;r++) {
  uint64_t n=r<3?r+MOD:r; auto [end,h]=advance(n,J); if(h>HMAX) continue;
  Row &z=rows[h]; ++z.count; uint64_t p=pow3(h),coeff=MOD-p;
  uint64_t intercept=MOD*end-p*n,margin=coeff*n-intercept;
  if(!z.have||margin<z.margin) { z.have=true;z.margin=margin;z.start=n;z.residue=r;z.endpoint=end;z.coeff=coeff;z.intercept=intercept; }
 }
 std::cout << "{\"method\":\"direct C++17 scan of every residue modulo 2^24\",\"steps\":24,\"max_odd_inputs\":15,\"modulus\":"<<MOD<<",\"total_masks\":";
 uint64_t total=0;for(const auto &x:rows)total+=x.count;std::cout<<total<<",\"rows\":[";
 for(unsigned h=0;h<=HMAX;h++) { const Row &x=rows[h];if(h)std::cout<<",";std::cout<<"{\"h\":"<<h<<",\"mask_count\":"<<x.count<<",\"minimum\":";
  if(!x.have)std::cout<<"null";else std::cout<<"{\"h\":"<<h<<",\"start\":"<<x.start<<",\"residue\":"<<x.residue<<",\"endpoint\":"<<x.endpoint<<",\"coefficient\":"<<x.coeff<<",\"intercept\":"<<x.intercept<<",\"margin_scaled\":"<<x.margin<<"}";
  std::cout<<"}";
 }
 double sec=std::chrono::duration<double>(std::chrono::steady_clock::now()-t0).count();
 std::cout<<"],\"elapsed_seconds\":"<<sec<<"}\n";
}

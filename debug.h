#include <cstdint>
using namespace std;

#define get_var_name(var) cerr << (#var)

inline void debug_print(bool a) {cerr << a;}
inline void debug_print(int a) {cerr << a;}
inline void debug_print(short a) {cerr << a;}
inline void debug_print(int64_t a) {cerr << a;}
inline void debug_print(long long a) {cerr << a;}
inline void debug_print(float a) {cerr << a;}
inline void debug_print(double a) {cerr << a;}
inline void debug_print(char a) {cerr << a;}
inline void debug_print(string a) {cerr << a;}

template <typename T1, typename T2>
void debug_print(pair<T1, T2> p) {
    cerr << "(" << p.first << ", " << p.second << ")";
}


template <typename Iter>
void debug_print(Iter v) {
    
    cerr << "{";
    for (auto i: v) {
        debug_print(i);
        cerr << ", ";
    }

    cerr << "\b\b}";
}

inline void debug_out() {cerr << "\b";}

template <typename A, typename... B>
void debug_out(A a, B... b) {

    debug_print(a) ; cerr << ",";
    debug_out(b...);
}

#define debug(...) cerr << "(" << #__VA_ARGS__ << "): ", debug_out(__VA_ARGS__), cerr << " \n"



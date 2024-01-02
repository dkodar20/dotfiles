#define debug(...)
#include <bits/stdc++.h>

using namespace std;
void solve();

#define ll long long

const int MAX_N = 100001;
const int MOD = 1000*1000*1000 + 7;
const int INF = 1000*1000*1000;
const ll LINF = 1ll*1000000*1000000*1000000;

int main() {

	ios_base::sync_with_stdio(false);
	cin.tie(NULL);

	int t=1;
	/*is Single Test case?*/cin >> t;
	for (int i = 0; i < t; ++i) {
		solve();
		cout << "\n";
	}

	cerr << "time taken : " << (float)clock()/CLOCKS_PER_SEC << " secs" << "\n";
	return 0;
}

void solve() {

}

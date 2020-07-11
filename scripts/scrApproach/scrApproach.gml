function approach(a, b, amount) {
	if (a < b) {
	    a += amount;
	    if (a > b)
	        return b;
	}
	else {
	    a -= amount;
	    if (a < b)
	        return b;
	}
	return a;
}
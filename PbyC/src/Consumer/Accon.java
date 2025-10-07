
package Consumer;

import company.*;

public abstract class Accon extends Compani {
	public double cal(int sal) {
		return sal;
	}
	public double cal(double sal, double bon) {
		return (sal+bon);
	}
	public double cal(double sal, double bon, double tax) {
		return (sal+bon-tax);

	}

}

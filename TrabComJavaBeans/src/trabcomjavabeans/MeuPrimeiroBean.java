package trabcomjavabeans;

public class MeuPrimeiroBean {

		private double value;
		private double tax;

		public double getValue() {
			return value;
		}
		public double getTax() {
			return tax;
		}
		public void setValue(double value) {
			this.value = value;
		}
		public void setTax(double tax) {
			this.tax  = tax;
		}
		public double convert() {
			return value * tax;
		}
}

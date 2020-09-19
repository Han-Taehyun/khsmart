package edumgt.common.util;



public class LeftMenuUtil {

	public LeftMenuUtil() {
	}
	
	
	

	public String CLASSACTIVE(String _H, String vParam) {
		String s = "";
		if (_H.indexOf(vParam) > 0) {
			s = "active";
		} else {
			s = "";
		}
		return s;
	}

	public String CLASSOPEN(String _H, String vParam) {
		String s = "";
		if (_H.indexOf(vParam) > 0) {
			s = "open";
		} else {
			s = "";
		}
		return s;
	}

	

}
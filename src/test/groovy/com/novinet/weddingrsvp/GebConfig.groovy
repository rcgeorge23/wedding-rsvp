import org.apache.commons.lang3.SystemUtils
import org.openqa.selenium.chrome.ChromeDriver

driver = {
	String seleniumDriverName = ""
	if (SystemUtils.IS_OS_MAC) {
		seleniumDriverName = "chromedriver-2_27-macos"
	} else if (SystemUtils.IS_OS_LINUX) {
		seleniumDriverName = "chromedriver-2_27-linux"
	}
	String binPath = getClass().getProtectionDomain().getCodeSource().getLocation().getFile()
	System.setProperty("webdriver.chrome.driver", binPath + "/seleniumdrivers/${seleniumDriverName}")
	return new ChromeDriver()
}

baseNavigatorWaiting = true
atCheckWaiting = true
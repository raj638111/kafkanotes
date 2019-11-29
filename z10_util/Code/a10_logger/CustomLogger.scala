package a10_logger

import org.apache.log4j._

/*
 * This custom logger provides a log file for the application and also
 * disables unnecessary spark related packages(by setting to 'ERROR' level)
 *
 * How to get this logger?
 * 	CustomLogger.getLogger(<category>)
 * 	Ex: CustomLogger.getLogger(this.getClass.getName.dropRight(1))
 *
 * What properties does it accept?
 * Accepts the following properties which can be passed through spark-submit
 *
 * logfile : The log file
 * Example: --conf "spark.driver.extraJavaOptions=-Dlogfile=somelog.log"
 * When not specified, the default log file name (default.log) is used
 *
 * loglevel: Log level for com.homeaway* packages
 * Example: --conf "spark.driver.extraJavaOptions=-Dloglevel=debug"
 * The accepted values are debug/info
 * When not specified, default loglevel is `debug`
 *
 */
object CustomLogger {

  val mPattern = "%d{yy/MM/dd HH:mm:ss} | %p | %c | %M() | %L | %m%n"
  val mFileLoggerName = "FileLogger"
  Logger.getRootLogger.removeAllAppenders()
  setLogger(Logger.getRootLogger, Level.DEBUG, Level.INFO)
  val logLevel = System.getProperty("loglevel") match {
    case "debug" => Level.DEBUG
    case "info" => Level.INFO
    case _ => Level.INFO
  }
  setLogger(Logger.getLogger("rj"), Level.DEBUG, logLevel)

  def setLogger(logger: Logger, logLevel: Level, thresholdLevel: Level): Unit = {
    println("Setting Root Logger...") //scalastyle:ignore
    logger.setLevel(logLevel)
    logger.setAdditivity(false)
    setConsoleAppender(logger, thresholdLevel)
  }

  def getLogger(category: String): Logger = {
    Logger.getLogger(category)
  }

  def setConsoleAppender(logger: Logger, thresholdLevel: Level): Unit = {
    val console = new ConsoleAppender(); //create appender
    console.setLayout(new PatternLayout(mPattern));
    console.setThreshold(thresholdLevel);
    console.activateOptions();
    logger.addAppender(console)
  }

}

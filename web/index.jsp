<%--
  Created by IntelliJ IDEA.
  User: EunHan
  Date: 2017-04-22
  Time: 오전 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<span id="time_out">0.00</span>
<br/>
<br/>
<button id="start_timer" onclick="start()">Start</button>
<button id="stop_timer" onclick="stop()">Stop</button>
<button id="reset_timer" onclick="reset()">Reset</button>


<script type="text/javascript">

    var timer,
        i = 0,
        divide = 100;


    function start() {

        timer = self.setInterval('increment()', (1000 / divide));
    }

    function increment() {
        i++;
        document.getElementById('time_out').innerHTML = (i / divide);
    }

    function stop() {
        clearInterval(timer);
        timer = null;
    }

    function reset() {
        stop();
        i = 0
        document.getElementById('time_out').innerHTML = (i / divide);
    }

</script>
</body>
</html>

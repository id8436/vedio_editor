package com.google.api.client.extensions.jetty.auth.oauth2;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.MimeTypes;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.handler.AbstractHandler;

/* JADX INFO: loaded from: classes3.dex */
public final class LocalServerReceiver implements VerificationCodeReceiver {
    private static final String CALLBACK_PATH = "/Callback";
    String code;
    String error;
    final Condition gotAuthorizationResponse;
    private final String host;
    final Lock lock;
    private int port;
    private Server server;

    public LocalServerReceiver() {
        this("localhost", -1);
    }

    LocalServerReceiver(String str, int i) {
        this.lock = new ReentrantLock();
        this.gotAuthorizationResponse = this.lock.newCondition();
        this.host = str;
        this.port = i;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public String getRedirectUri() throws Exception {
        if (this.port == -1) {
            this.port = getUnusedPort();
        }
        this.server = new Server(this.port);
        for (Connector connector : this.server.getConnectors()) {
            connector.setHost(this.host);
        }
        this.server.addHandler(new CallbackHandler());
        this.server.start();
        return "http://" + this.host + ":" + this.port + CALLBACK_PATH;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public String waitForCode() throws Exception {
        this.lock.lock();
        while (this.code == null && this.error == null) {
            try {
                this.gotAuthorizationResponse.awaitUninterruptibly();
            } finally {
                this.lock.unlock();
            }
        }
        if (this.error != null) {
            throw new Exception("User authorization failed (" + this.error + ")");
        }
        return this.code;
    }

    @Override // com.google.api.client.extensions.java6.auth.oauth2.VerificationCodeReceiver
    public void stop() throws Exception {
        if (this.server != null) {
            this.server.stop();
            this.server = null;
        }
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }

    private static int getUnusedPort() throws IOException {
        Socket socket = new Socket();
        socket.bind(null);
        try {
            return socket.getLocalPort();
        } finally {
            socket.close();
        }
    }

    public final class Builder {
        private String host = "localhost";
        private int port = -1;

        public LocalServerReceiver build() {
            return new LocalServerReceiver(this.host, this.port);
        }

        public String getHost() {
            return this.host;
        }

        public Builder setHost(String str) {
            this.host = str;
            return this;
        }

        public int getPort() {
            return this.port;
        }

        public Builder setPort(int i) {
            this.port = i;
            return this;
        }
    }

    class CallbackHandler extends AbstractHandler {
        CallbackHandler() {
        }

        @Override // org.mortbay.jetty.Handler
        public void handle(String str, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, int i) throws IOException {
            if (LocalServerReceiver.CALLBACK_PATH.equals(str)) {
                writeLandingHtml(httpServletResponse);
                httpServletResponse.flushBuffer();
                ((Request) httpServletRequest).setHandled(true);
                LocalServerReceiver.this.lock.lock();
                try {
                    LocalServerReceiver.this.error = httpServletRequest.getParameter(Adobe360Constants.kAdobe360SatusError);
                    LocalServerReceiver.this.code = httpServletRequest.getParameter(ProjectHostingService.PROJECTHOSTING_SERVICE);
                    LocalServerReceiver.this.gotAuthorizationResponse.signal();
                } finally {
                    LocalServerReceiver.this.lock.unlock();
                }
            }
        }

        private void writeLandingHtml(HttpServletResponse httpServletResponse) throws IOException {
            httpServletResponse.setStatus(200);
            httpServletResponse.setContentType(MimeTypes.TEXT_HTML);
            PrintWriter writer = httpServletResponse.getWriter();
            writer.println("<html>");
            writer.println("<head><title>OAuth 2.0 Authentication Token Recieved</title></head>");
            writer.println("<body>");
            writer.println("Received verification code. Closing...");
            writer.println("<script type='text/javascript'>");
            writer.println("window.setTimeout(function() {");
            writer.println("    window.open('', '_self', ''); window.close(); }, 1000);");
            writer.println("if (window.opener) { window.opener.checkToken(); }");
            writer.println("</script>");
            writer.println("</body>");
            writer.println("</HTML>");
            writer.flush();
        }
    }
}

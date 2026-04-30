package com.google.gdata.client.authn.oauth;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthHttpClient {
    public String getResponse(URL url) throws OAuthException {
        return getResponse(url, null);
    }

    public String getResponse(URL url, Map<String, String> map) throws OAuthException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConnection.connect();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (IOException e2) {
            throw new OAuthException("Error getting HTTP response", e2);
        }
    }
}

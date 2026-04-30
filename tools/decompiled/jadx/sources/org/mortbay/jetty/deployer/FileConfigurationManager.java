package org.mortbay.jetty.deployer;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import org.mortbay.resource.Resource;

/* JADX INFO: loaded from: classes3.dex */
public class FileConfigurationManager implements ConfigurationManager {
    private Resource _file;
    private Properties _properties = new Properties();

    public void setFile(String str) throws IOException {
        this._file = Resource.newResource(str);
    }

    @Override // org.mortbay.jetty.deployer.ConfigurationManager
    public Map getProperties() {
        try {
            loadProperties();
            return this._properties;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    private void loadProperties() throws IOException {
        if (this._properties.isEmpty()) {
            this._properties.load(this._file.getInputStream());
        }
    }
}

package org.mortbay.jetty.security;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.data.appsforyourdomain.Login;
import java.io.IOException;
import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import org.mortbay.jetty.Request;
import org.mortbay.log.Log;
import org.mortbay.util.Loader;

/* JADX INFO: loaded from: classes3.dex */
public class JDBCUserRealm extends HashUserRealm implements UserRealm {
    private int _cacheTime;
    private Connection _con;
    private String _jdbcDriver;
    private long _lastHashPurge;
    private String _password;
    private String _roleSql;
    private String _roleTable;
    private String _roleTableKey;
    private String _roleTableRoleField;
    private String _url;
    private String _userName;
    private String _userRoleTable;
    private String _userRoleTableRoleKey;
    private String _userRoleTableUserKey;
    private String _userSql;
    private String _userTable;
    private String _userTableKey;
    private String _userTablePasswordField;
    private String _userTableUserField;

    public JDBCUserRealm() {
    }

    public JDBCUserRealm(String str) {
        super(str);
    }

    public JDBCUserRealm(String str, String str2) throws IllegalAccessException, InstantiationException, IOException, ClassNotFoundException {
        super(str);
        setConfig(str2);
        Loader.loadClass(getClass(), this._jdbcDriver).newInstance();
    }

    @Override // org.mortbay.jetty.security.HashUserRealm
    protected void loadConfig() throws IOException {
        Properties properties = new Properties();
        properties.load(getConfigResource().getInputStream());
        this._jdbcDriver = properties.getProperty("jdbcdriver");
        this._url = properties.getProperty("url");
        this._userName = properties.getProperty(AppsForYourDomainQuery.USERNAME);
        this._password = properties.getProperty(Login.ATTRIBUTE_PASSWORD);
        this._userTable = properties.getProperty("usertable");
        this._userTableKey = properties.getProperty("usertablekey");
        this._userTableUserField = properties.getProperty("usertableuserfield");
        this._userTablePasswordField = properties.getProperty("usertablepasswordfield");
        this._roleTable = properties.getProperty("roletable");
        this._roleTableKey = properties.getProperty("roletablekey");
        this._roleTableRoleField = properties.getProperty("roletablerolefield");
        this._userRoleTable = properties.getProperty("userroletable");
        this._userRoleTableUserKey = properties.getProperty("userroletableuserkey");
        this._userRoleTableRoleKey = properties.getProperty("userroletablerolekey");
        String property = properties.getProperty("cachetime");
        this._cacheTime = property != null ? new Integer(property).intValue() : 30;
        if ((this._jdbcDriver == null || this._jdbcDriver.equals("") || this._url == null || this._url.equals("") || this._userName == null || this._userName.equals("") || this._password == null || this._cacheTime < 0) && Log.isDebugEnabled()) {
            Log.debug(new StringBuffer().append("UserRealm ").append(getName()).append(" has not been properly configured").toString());
        }
        this._cacheTime *= 1000;
        this._lastHashPurge = 0L;
        this._userSql = new StringBuffer().append("select ").append(this._userTableKey).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this._userTablePasswordField).append(" from ").append(this._userTable).append(" where ").append(this._userTableUserField).append(" = ?").toString();
        this._roleSql = new StringBuffer().append("select r.").append(this._roleTableRoleField).append(" from ").append(this._roleTable).append(" r, ").append(this._userRoleTable).append(" u where u.").append(this._userRoleTableUserKey).append(" = ?").append(" and r.").append(this._roleTableKey).append(" = u.").append(this._userRoleTableRoleKey).toString();
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public void logout(Principal principal) {
    }

    public void connectDatabase() {
        try {
            Class.forName(this._jdbcDriver);
            this._con = DriverManager.getConnection(this._url, this._userName, this._password);
        } catch (ClassNotFoundException e2) {
            Log.warn(new StringBuffer().append("UserRealm ").append(getName()).append(" could not connect to database; will try later").toString(), (Throwable) e2);
        } catch (SQLException e3) {
            Log.warn(new StringBuffer().append("UserRealm ").append(getName()).append(" could not connect to database; will try later").toString(), (Throwable) e3);
        }
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public Principal authenticate(String str, Object obj, Request request) {
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this._lastHashPurge > this._cacheTime || this._cacheTime == 0) {
                this._users.clear();
                this._roles.clear();
                this._lastHashPurge = jCurrentTimeMillis;
                closeConnection();
            }
            if (super.getPrincipal(str) == null) {
                loadUser(str);
                super.getPrincipal(str);
            }
        }
        return super.authenticate(str, obj, request);
    }

    @Override // org.mortbay.jetty.security.HashUserRealm, org.mortbay.jetty.security.UserRealm
    public synchronized boolean isUserInRole(Principal principal, String str) {
        if (super.getPrincipal(principal.getName()) == null) {
            loadUser(principal.getName());
        }
        return super.isUserInRole(principal, str);
    }

    private void loadUser(String str) {
        try {
            if (this._con == null) {
                connectDatabase();
            }
            if (this._con == null) {
                throw new SQLException("Can't connect to database");
            }
            PreparedStatement preparedStatementPrepareStatement = this._con.prepareStatement(this._userSql);
            preparedStatementPrepareStatement.setObject(1, str);
            ResultSet resultSetExecuteQuery = preparedStatementPrepareStatement.executeQuery();
            if (resultSetExecuteQuery.next()) {
                int i = resultSetExecuteQuery.getInt(this._userTableKey);
                put(str, resultSetExecuteQuery.getString(this._userTablePasswordField));
                preparedStatementPrepareStatement.close();
                PreparedStatement preparedStatementPrepareStatement2 = this._con.prepareStatement(this._roleSql);
                preparedStatementPrepareStatement2.setInt(1, i);
                ResultSet resultSetExecuteQuery2 = preparedStatementPrepareStatement2.executeQuery();
                while (resultSetExecuteQuery2.next()) {
                    addUserToRole(str, resultSetExecuteQuery2.getString(this._roleTableRoleField));
                }
                preparedStatementPrepareStatement2.close();
            }
        } catch (SQLException e2) {
            Log.warn(new StringBuffer().append("UserRealm ").append(getName()).append(" could not load user information from database").toString(), (Throwable) e2);
            closeConnection();
        }
    }

    private void closeConnection() {
        if (this._con != null) {
            if (Log.isDebugEnabled()) {
                Log.debug("Closing db connection for JDBCUserRealm");
            }
            try {
                this._con.close();
            } catch (Exception e2) {
                Log.ignore(e2);
            }
        }
        this._con = null;
    }
}

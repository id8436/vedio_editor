.class public Lorg/mortbay/jetty/security/FormAuthenticator;
.super Ljava/lang/Object;
.source "FormAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# static fields
.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.mortbay.jetty.Auth"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.mortbay.jetty.URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    .line 127
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v3

    .line 128
    if-nez v3, :cond_1

    move-object v0, v2

    .line 263
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 135
    new-instance v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    invoke-direct {v4, v2}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/FormAuthenticator$1;)V

    .line 136
    const-string/jumbo v0, "j_username"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "j_password"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v0, v5, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/Request;)V

    .line 141
    const-string/jumbo v0, "org.mortbay.jetty.URI"

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 144
    :cond_2
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 146
    const-string/jumbo v0, "/"

    .line 149
    :cond_3
    iget-object v5, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v5, :cond_7

    .line 152
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Form authentication OK for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 153
    :cond_4
    const-string/jumbo v5, "org.mortbay.jetty.URI"

    invoke-interface {v3, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v5, "FORM"

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 155
    iget-object v5, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, v5}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 156
    const-string/jumbo v5, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v5, v4}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    instance-of v3, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v3, :cond_5

    .line 160
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    iget-object v3, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    new-instance v5, Lorg/mortbay/jetty/security/Password;

    iget-object v4, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, v3, v5}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    .line 163
    :cond_5
    if-eqz p4, :cond_6

    .line 165
    invoke-virtual {p4, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 166
    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move-object v0, v2

    .line 190
    goto/16 :goto_1

    .line 171
    :cond_7
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Form authentication FAILED for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, v4, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    invoke-static {v3}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 173
    :cond_8
    if-eqz p4, :cond_6

    .line 175
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 177
    const/16 v0, 0x193

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {p4, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 182
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :cond_a
    const-string/jumbo v0, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    .line 196
    if-eqz v0, :cond_10

    .line 199
    iget-object v4, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-nez v4, :cond_d

    .line 202
    invoke-virtual {v0, p1, p3}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)V

    .line 205
    iget-object v4, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v4, :cond_b

    instance-of v4, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v4, :cond_b

    .line 206
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    iget-object v4, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    new-instance v5, Lorg/mortbay/jetty/security/Password;

    iget-object v6, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3, p4, v4, v5}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    .line 214
    :cond_b
    :goto_3
    iget-object v4, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    if-eqz v4, :cond_e

    .line 216
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "FORM Authenticated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 217
    :cond_c
    const-string/jumbo v1, "FORM"

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 218
    iget-object v1, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 219
    iget-object v0, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto/16 :goto_1

    .line 209
    :cond_d
    iget-object v4, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {p1, v4}, Lorg/mortbay/jetty/security/UserRealm;->reauthenticate(Ljava/security/Principal;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 211
    iput-object v2, v0, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto :goto_3

    .line 222
    :cond_e
    const-string/jumbo v0, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v0, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :cond_f
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 246
    sget-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    goto/16 :goto_1

    .line 224
    :cond_10
    instance-of v0, p1, Lorg/mortbay/jetty/security/SSORealm;

    if-eqz v0, :cond_f

    .line 227
    check-cast p1, Lorg/mortbay/jetty/security/SSORealm;

    invoke-interface {p1, p3, p4}, Lorg/mortbay/jetty/security/SSORealm;->getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;

    move-result-object v0

    .line 229
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 231
    new-instance v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;

    invoke-direct {v1, v2}, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;-><init>(Lorg/mortbay/jetty/security/FormAuthenticator$1;)V

    .line 232
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    .line 233
    iget-object v2, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jUserName:Ljava/lang/String;

    .line 234
    if-eqz v0, :cond_11

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_jPassword:Ljava/lang/String;

    .line 236
    :cond_11
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "SSO for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 238
    :cond_12
    const-string/jumbo v0, "FORM"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "org.mortbay.jetty.Auth"

    invoke-interface {v3, v0, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v0, v1, Lorg/mortbay/jetty/security/FormAuthenticator$FormCredential;->_userPrincipal:Ljava/security/Principal;

    goto/16 :goto_1

    .line 249
    :cond_13
    if-eqz p4, :cond_15

    .line 251
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    :cond_14
    const-string/jumbo v0, "org.mortbay.jetty.URI"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p4, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 259
    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    :cond_15
    move-object v0, v2

    .line 263
    goto/16 :goto_1
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "FORM"

    return-object v0
.end method

.method public getErrorPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    const-string/jumbo v2, "/j_security_check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 278
    if-gez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    const-string/jumbo v3, "/j_security_check"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 282
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 284
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 269
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorPage(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x3f

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    :cond_0
    iput-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string/jumbo v0, "form-error-page must start with /"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLoginPage(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x3f

    .line 66
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "form-login-page must start with /"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method

.class public Lorg/mortbay/jetty/security/SecurityHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SecurityHandler.java"


# static fields
.field public static __NOBODY:Ljava/security/Principal;

.field public static __NO_USER:Ljava/security/Principal;


# instance fields
.field private _authMethod:Ljava/lang/String;

.field private _authenticator:Lorg/mortbay/jetty/security/Authenticator;

.field private _checkWelcomeFiles:Z

.field private _constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

.field private _constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

.field private _notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

.field private _userRealm:Lorg/mortbay/jetty/security/UserRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$1;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/SecurityHandler$1;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    .line 526
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$2;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/SecurityHandler$2;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 44
    const-string/jumbo v0, "BASIC"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 49
    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;-><init>(Lorg/mortbay/jetty/security/SecurityHandler;)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 41
    return-void
.end method

.method private check(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    const/4 v1, 0x0

    .line 300
    const/4 v2, 0x0

    .line 301
    const/4 v5, 0x0

    .line 303
    const/4 v0, 0x0

    move v4, v3

    move v3, v0

    :goto_0
    invoke-static {p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_1c

    .line 305
    invoke-static {p1, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/Constraint;

    .line 308
    const/4 v6, -0x1

    if-le v4, v6, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->hasDataConstraint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 311
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v4

    .line 317
    :cond_0
    :goto_1
    if-nez v2, :cond_1b

    .line 319
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->getAuthenticate()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 321
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->isAnyRole()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    const-string/jumbo v1, "*"

    move v0, v2

    .line 303
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v7

    .line 328
    if-eqz v7, :cond_3

    array-length v0, v7

    if-nez v0, :cond_5

    .line 330
    :cond_3
    const/4 v0, 0x1

    .line 350
    :goto_3
    if-eqz v0, :cond_9

    instance-of v0, p2, Lorg/mortbay/jetty/security/FormAuthenticator;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-virtual {v0, p4}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 355
    :cond_4
    const/16 v0, 0x193

    invoke-virtual {p6, v0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 356
    const/4 v0, 0x0

    .line 484
    :goto_4
    return v0

    .line 336
    :cond_5
    const-string/jumbo v0, "*"

    if-eq v1, v0, :cond_6

    .line 338
    array-length v0, v7

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_5
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_7

    .line 339
    aget-object v1, v7, v6

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move v1, v6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :cond_7
    move-object v1, v0

    move v0, v2

    .line 342
    goto :goto_2

    .line 345
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 360
    :cond_9
    if-lez v4, :cond_a

    .line 362
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    .line 365
    packed-switch v4, :pswitch_data_0

    .line 411
    const/16 v0, 0x193

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 412
    const/4 v0, 0x0

    goto :goto_4

    .line 368
    :pswitch_0
    invoke-interface {v0, p5}, Lorg/mortbay/jetty/Connector;->isIntegral(Lorg/mortbay/jetty/Request;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 417
    :cond_a
    if-nez v2, :cond_16

    if-eqz v1, :cond_16

    .line 419
    if-nez p3, :cond_10

    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " failed - no realm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 422
    const/16 v0, 0x1f4

    const-string/jumbo v1, "No realm"

    invoke-virtual {p6, v0, v1}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    goto :goto_4

    .line 370
    :cond_b
    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v1

    if-lez v1, :cond_d

    .line 372
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getIntegralPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 380
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 382
    invoke-virtual {p6, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    .line 386
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 385
    :cond_d
    const/16 v0, 0x193

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_6

    .line 388
    :pswitch_1
    invoke-interface {v0, p5}, Lorg/mortbay/jetty/Connector;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 391
    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v1

    if-lez v1, :cond_f

    .line 393
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 401
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 404
    invoke-virtual {p6, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    .line 408
    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 407
    :cond_f
    const/16 v0, 0x193

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_7

    .line 426
    :cond_10
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getAuthType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 432
    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 433
    if-nez v0, :cond_11

    .line 434
    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p3, v0, v2, p5}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    .line 435
    :cond_11
    if-nez v0, :cond_1a

    if-eqz p2, :cond_1a

    .line 436
    invoke-interface {p2, p3, p4, p5, p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v0

    move-object v4, v0

    .line 451
    :goto_8
    if-nez v4, :cond_14

    .line 452
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 438
    :cond_12
    if-eqz p2, :cond_13

    .line 441
    invoke-interface {p2, p3, p4, p5, p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v0

    move-object v4, v0

    goto :goto_8

    .line 446
    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Mis-configured Authenticator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 447
    const/16 v2, 0x1f4

    const-string/jumbo v3, "Configuration error"

    invoke-virtual {p6, v2, v3}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    move-object v4, v0

    goto :goto_8

    .line 453
    :cond_14
    sget-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    if-ne v4, v0, :cond_15

    .line 454
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 456
    :cond_15
    const-string/jumbo v0, "*"

    if-eq v1, v0, :cond_17

    .line 458
    const/4 v2, 0x0

    .line 459
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_9
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_19

    .line 461
    invoke-static {v1, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v4, v0}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 463
    const/4 v0, 0x1

    .line 468
    :goto_a
    if-nez v0, :cond_17

    .line 470
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "AUTH FAILURE: incorrect role for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 474
    const/16 v0, 0x193

    const-string/jumbo v1, "User not in required role"

    invoke-virtual {p6, v0, v1}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 481
    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-virtual {p5, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 484
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_18
    move v0, v3

    goto :goto_9

    :cond_19
    move v0, v2

    goto :goto_a

    :cond_1a
    move-object v4, v0

    goto/16 :goto_8

    :cond_1b
    move v0, v2

    goto/16 :goto_2

    :cond_1c
    move v0, v5

    goto/16 :goto_3

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 239
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 247
    if-eqz v7, :cond_3

    move v6, v5

    move-object v3, v2

    .line 249
    :goto_0
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 251
    invoke-static {v7, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move v4, v5

    .line 255
    :goto_1
    invoke-static {v8}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 257
    invoke-static {v8, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 258
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v0, v2

    move-object v2, v3

    .line 255
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .line 261
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 269
    :goto_3
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/security/SecurityHandler;->check(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v0

    .line 273
    :goto_4
    return v0

    .line 265
    :cond_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->getConstraint()Lorg/mortbay/jetty/security/Constraint;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    goto :goto_2

    .line 249
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_notChecked:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    .line 273
    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v0, "BASIC"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Lorg/mortbay/jetty/security/BasicAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    .line 175
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 176
    return-void

    .line 165
    :cond_1
    const-string/jumbo v0, "DIGEST"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Lorg/mortbay/jetty/security/DigestAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 167
    :cond_2
    const-string/jumbo v0, "CLIENT_CERT"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 169
    :cond_3
    const-string/jumbo v0, "FORM"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    new-instance v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Unknown Authentication method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    return-object v0
.end method

.method public getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    return-object v0
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 185
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    move-object v1, v0

    .line 186
    :goto_0
    instance-of v0, p3, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lorg/mortbay/jetty/Response;

    .line 187
    :goto_1
    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v2

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    .line 191
    if-ne p4, v5, :cond_3

    invoke-virtual {p0, p1, v1, v0}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_0

    .line 222
    if-ne p4, v5, :cond_0

    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_0
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    .line 229
    :goto_2
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    goto :goto_1

    .line 197
    :cond_3
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    :try_start_1
    iget-boolean v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "org.mortbay.jetty.welcome"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 199
    const-string/jumbo v3, "org.mortbay.jetty.welcome"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1, v1, v0}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_4

    .line 222
    if-ne p4, v5, :cond_4

    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_4
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_2

    .line 208
    :cond_5
    :try_start_2
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    instance-of v3, v3, Lorg/mortbay/jetty/security/FormAuthenticator;

    if-eqz v3, :cond_7

    const-string/jumbo v3, "/j_security_check"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v4

    invoke-interface {v3, v4, p1, v1, v0}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    .line 211
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_6

    .line 222
    if-ne p4, v5, :cond_6

    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_6
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_2

    .line 215
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 216
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :cond_8
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v0, :cond_9

    .line 222
    if-ne p4, v5, :cond_9

    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_9
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto/16 :goto_2

    .line 220
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v3, :cond_a

    .line 222
    if-ne p4, v5, :cond_a

    .line 224
    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    .line 227
    :cond_a
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    throw v0
.end method

.method public hasConstraints()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckWelcomeFiles()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    return v0
.end method

.method public setAuthMethod(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Handler started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_authenticator:Lorg/mortbay/jetty/security/Authenticator;

    .line 69
    return-void
.end method

.method public setCheckWelcomeFiles(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 155
    return-void
.end method

.method public setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V
    .locals 4

    .prologue
    .line 104
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 105
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    .line 108
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/PathMap;->clear()V

    .line 110
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/servlet/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMap:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v3, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_constraintMappings:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    .line 87
    return-void
.end method

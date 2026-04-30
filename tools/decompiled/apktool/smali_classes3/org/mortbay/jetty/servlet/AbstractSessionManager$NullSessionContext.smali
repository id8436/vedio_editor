.class public Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Ljavax/servlet/http/HttpSessionContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager$1;)V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$NullSessionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

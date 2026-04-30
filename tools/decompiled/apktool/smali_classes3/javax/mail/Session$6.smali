.class Ljavax/mail/Session$6;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1229
    const/4 v1, 0x0

    .line 1231
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1232
    iget-object v0, p0, Ljavax/mail/Session$6;->val$name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 1233
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 1235
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1244
    :goto_1
    return-object v0

    .line 1238
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1239
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1240
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 1242
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1243
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

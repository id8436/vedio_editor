.class public final Lcom/dropbox/core/DbxStandardSessionStore;
.super Ljava/lang/Object;
.source "DbxStandardSessionStore.java"

# interfaces
.implements Lcom/dropbox/core/DbxSessionStore;


# instance fields
.field private final key:Ljava/lang/String;

.field private final session:Ljavax/servlet/http/HttpSession;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dropbox/core/DbxStandardSessionStore;->session:Ljavax/servlet/http/HttpSession;

    .line 28
    iput-object p2, p0, Lcom/dropbox/core/DbxStandardSessionStore;->key:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->session:Ljavax/servlet/http/HttpSession;

    iget-object v1, p0, Lcom/dropbox/core/DbxStandardSessionStore;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->session:Ljavax/servlet/http/HttpSession;

    iget-object v1, p0, Lcom/dropbox/core/DbxStandardSessionStore;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->session:Ljavax/servlet/http/HttpSession;

    return-object v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/core/DbxStandardSessionStore;->session:Ljavax/servlet/http/HttpSession;

    iget-object v1, p0, Lcom/dropbox/core/DbxStandardSessionStore;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

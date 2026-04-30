.class public final Lcom/dropbox/core/DbxWebAuth$Request$Builder;
.super Ljava/lang/Object;
.source "DbxWebAuth.java"


# instance fields
.field private disableSignup:Ljava/lang/Boolean;

.field private forceReapprove:Ljava/lang/Boolean;

.field private redirectUri:Ljava/lang/String;

.field private requireRole:Ljava/lang/String;

.field private sessionStore:Lcom/dropbox/core/DbxSessionStore;

.field private state:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 679
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->redirectUri:Ljava/lang/String;

    .line 689
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->state:Ljava/lang/String;

    .line 690
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->requireRole:Ljava/lang/String;

    .line 691
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->forceReapprove:Ljava/lang/Boolean;

    .line 692
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->disableSignup:Ljava/lang/Boolean;

    .line 693
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    .line 694
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxWebAuth$Request;
    .locals 8

    .prologue
    .line 835
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->redirectUri:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot specify a state without a redirect URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request;

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->redirectUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->state:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->requireRole:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->forceReapprove:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->disableSignup:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method

.method public withDisableSignup(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->disableSignup:Ljava/lang/Boolean;

    .line 822
    return-object p0
.end method

.method public withForceReapprove(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->forceReapprove:Ljava/lang/Boolean;

    .line 804
    return-object p0
.end method

.method public withNoRedirect()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->redirectUri:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    .line 709
    return-object p0
.end method

.method public withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    .prologue
    .line 736
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "redirectUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sessionStore"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->redirectUri:Ljava/lang/String;

    .line 740
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    .line 742
    return-object p0
.end method

.method public withRequireRole(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->requireRole:Ljava/lang/String;

    .line 786
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 3

    .prologue
    .line 763
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->access$800()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->access$900()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 764
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UTF-8 encoded state cannot be greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->access$900()I

    move-result v2

    rsub-int v2, v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->state:Ljava/lang/String;

    .line 767
    return-object p0
.end method

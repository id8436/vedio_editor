.class public final Lcom/dropbox/core/DbxWebAuth$Request;
.super Ljava/lang/Object;
.source "DbxWebAuth.java"


# static fields
.field private static final MAX_STATE_SIZE:I = 0x1f4

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final disableSignup:Ljava/lang/Boolean;

.field private final forceReapprove:Ljava/lang/Boolean;

.field private final redirectUri:Ljava/lang/String;

.field private final requireRole:Ljava/lang/String;

.field private final sessionStore:Lcom/dropbox/core/DbxSessionStore;

.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 620
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->redirectUri:Ljava/lang/String;

    .line 637
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->state:Ljava/lang/String;

    .line 638
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->requireRole:Ljava/lang/String;

    .line 639
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->forceReapprove:Ljava/lang/Boolean;

    .line 640
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->disableSignup:Ljava/lang/Boolean;

    .line 641
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->requireRole:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->forceReapprove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->disableSignup:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 619
    sget-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->UTF8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    .prologue
    .line 664
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 8

    .prologue
    .line 650
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->redirectUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->state:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->requireRole:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->forceReapprove:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->disableSignup:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method

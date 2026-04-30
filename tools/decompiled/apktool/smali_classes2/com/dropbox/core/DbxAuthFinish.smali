.class public final Lcom/dropbox/core/DbxAuthFinish;
.super Ljava/lang/Object;
.source "DbxAuthFinish.java"


# static fields
.field public static final AccessTokenReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/DbxAuthFinish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final urlState:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 131
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    .line 148
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/dropbox/core/DbxAuthFinish;->urlState:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->urlState:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    return-object v0
.end method

.method withUrlState(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->urlState:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already have URL state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish;

    iget-object v1, p0, Lcom/dropbox/core/DbxAuthFinish;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxAuthFinish;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.class public final Lcom/dropbox/core/http/HttpRequestor$Header;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dropbox/core/http/HttpRequestor$Header;->key:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/dropbox/core/http/HttpRequestor$Header;->value:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/http/HttpRequestor$Header;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/http/HttpRequestor$Header;->value:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/facebook/a/h;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/facebook/i/as;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 226
    instance-of v1, p1, Lcom/facebook/a/h;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    check-cast p1, Lcom/facebook/a/h;

    .line 230
    iget-object v1, p1, Lcom/facebook/a/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/i/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/a/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    .line 231
    invoke-static {v1, v2}, Lcom/facebook/i/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 221
    :goto_1
    xor-int/2addr v0, v1

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/facebook/a/h;->b:Ljava/lang/String;

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

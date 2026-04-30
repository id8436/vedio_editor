.class public Lcom/twitter/sdk/android/core/internal/scribe/f;
.super Ljava/lang/Object;
.source "EventNamespace.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/internal/scribe/e;
    .locals 7

    .prologue
    .line 138
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->a:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->b:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->c:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->d:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->e:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/f;->f:Ljava/lang/String;

    .line 134
    return-object p0
.end method

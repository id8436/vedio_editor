.class final Lf/y;
.super Ld/bf;
.source "OkHttpCall.java"


# instance fields
.field private final a:Ld/an;

.field private final b:J


# direct methods
.method constructor <init>(Ld/an;J)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ld/bf;-><init>()V

    .line 254
    iput-object p1, p0, Lf/y;->a:Ld/an;

    .line 255
    iput-wide p2, p0, Lf/y;->b:J

    .line 256
    return-void
.end method


# virtual methods
.method public a()Ld/an;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lf/y;->a:Ld/an;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lf/y;->b:J

    return-wide v0
.end method

.method public d()Le/j;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

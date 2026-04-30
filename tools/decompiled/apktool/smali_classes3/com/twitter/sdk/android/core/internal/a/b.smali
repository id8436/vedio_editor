.class public Lcom/twitter/sdk/android/core/internal/a/b;
.super Ljava/lang/Object;
.source "GuestAuthNetworkInterceptor.java"

# interfaces
.implements Ld/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v0

    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    .line 35
    invoke-virtual {v0}, Ld/bd;->g()Ld/be;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Ld/be;->a(I)Ld/be;

    move-result-object v0

    invoke-virtual {v0}, Ld/be;->a()Ld/bd;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

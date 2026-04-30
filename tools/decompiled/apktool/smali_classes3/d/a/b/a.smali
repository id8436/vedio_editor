.class public final Ld/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Ld/al;


# instance fields
.field public final a:Ld/ar;


# direct methods
.method public constructor <init>(Ld/ar;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ld/a/b/a;->a:Ld/ar;

    .line 33
    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p1

    check-cast v0, Ld/a/c/i;

    .line 37
    invoke-virtual {v0}, Ld/a/c/i;->a()Ld/ax;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Ld/a/c/i;->f()Ld/a/b/h;

    move-result-object v3

    .line 41
    invoke-virtual {v2}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 42
    :goto_0
    iget-object v4, p0, Ld/a/b/a;->a:Ld/ar;

    invoke-virtual {v3, v4, p1, v1}, Ld/a/b/h;->a(Ld/ar;Ld/am;Z)Ld/a/c/d;

    move-result-object v1

    .line 43
    invoke-virtual {v3}, Ld/a/b/h;->b()Ld/a/b/c;

    move-result-object v4

    .line 45
    invoke-virtual {v0, v2, v3, v1, v4}, Ld/a/c/i;->a(Ld/ax;Ld/a/b/h;Ld/a/c/d;Ld/a/b/c;)Ld/bd;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

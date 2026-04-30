.class final Ld/a/e/t;
.super Ld/a/e/s;
.source "Http2Connection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Ld/a/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/a/e/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    sget-object v0, Ld/a/e/b;->e:Ld/a/e/b;

    invoke-virtual {p1, v0}, Ld/a/e/ab;->a(Ld/a/e/b;)V

    .line 863
    return-void
.end method

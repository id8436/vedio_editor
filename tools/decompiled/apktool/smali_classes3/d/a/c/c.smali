.class final Ld/a/c/c;
.super Le/l;
.source "CallServerInterceptor.java"


# instance fields
.field a:J


# direct methods
.method constructor <init>(Le/aa;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Le/l;-><init>(Le/aa;)V

    .line 131
    return-void
.end method


# virtual methods
.method public a_(Le/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Le/l;->a_(Le/f;J)V

    .line 135
    iget-wide v0, p0, Ld/a/c/c;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ld/a/c/c;->a:J

    .line 136
    return-void
.end method

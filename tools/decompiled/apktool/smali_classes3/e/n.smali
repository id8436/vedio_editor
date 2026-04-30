.class public Le/n;
.super Le/ac;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Le/ac;


# direct methods
.method public constructor <init>(Le/ac;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Le/ac;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Le/n;->a:Le/ac;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Le/ac;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Le/n;->a:Le/ac;

    return-object v0
.end method

.method public a(J)Le/ac;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0, p1, p2}, Le/ac;->a(J)Le/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Le/ac;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0, p1, p2, p3}, Le/ac;->a(JLjava/util/concurrent/TimeUnit;)Le/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(Le/ac;)Le/n;
    .locals 2

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Le/n;->a:Le/ac;

    .line 38
    return-object p0
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->c_()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()Le/ac;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->d_()Le/ac;

    move-result-object v0

    return-object v0
.end method

.method public f()Le/ac;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->f()Le/ac;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Le/n;->a:Le/ac;

    invoke-virtual {v0}, Le/ac;->g()V

    .line 71
    return-void
.end method

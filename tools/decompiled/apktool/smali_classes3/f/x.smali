.class Lf/x;
.super Le/m;
.source "OkHttpCall.java"


# instance fields
.field final synthetic a:Lf/w;


# direct methods
.method constructor <init>(Lf/w;Le/ab;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lf/x;->a:Lf/w;

    invoke-direct {p0, p2}, Le/m;-><init>(Le/ab;)V

    return-void
.end method


# virtual methods
.method public a(Le/f;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Le/m;->a(Le/f;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    iget-object v1, p0, Lf/x;->a:Lf/w;

    iput-object v0, v1, Lf/w;->a:Ljava/io/IOException;

    .line 294
    throw v0
.end method

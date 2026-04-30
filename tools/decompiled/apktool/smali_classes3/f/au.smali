.class Lf/au;
.super Ld/az;
.source "RequestBuilder.java"


# instance fields
.field private final a:Ld/az;

.field private final b:Ld/an;


# direct methods
.method constructor <init>(Ld/az;Ld/an;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ld/az;-><init>()V

    .line 237
    iput-object p1, p0, Lf/au;->a:Ld/az;

    .line 238
    iput-object p2, p0, Lf/au;->b:Ld/an;

    .line 239
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lf/au;->a:Ld/az;

    invoke-virtual {v0}, Ld/az;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lf/au;->b:Ld/an;

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lf/au;->a:Ld/az;

    invoke-virtual {v0, p1}, Ld/az;->writeTo(Le/i;)V

    .line 251
    return-void
.end method

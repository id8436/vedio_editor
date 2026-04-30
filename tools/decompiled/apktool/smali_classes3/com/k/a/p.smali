.class Lcom/k/a/p;
.super Lcom/k/a/bb;
.source "ContentStreamRequestHandler.java"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/k/a/bb;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/k/a/p;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/k/a/ax;I)Lcom/k/a/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/k/a/bc;

    invoke-virtual {p0, p1}, Lcom/k/a/p;->b(Lcom/k/a/ax;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/k/a/aq;->b:Lcom/k/a/aq;

    invoke-direct {v0, v1, v2}, Lcom/k/a/bc;-><init>(Ljava/io/InputStream;Lcom/k/a/aq;)V

    return-object v0
.end method

.method public a(Lcom/k/a/ax;)Z
    .locals 2

    .prologue
    .line 35
    const-string/jumbo v0, "content"

    iget-object v1, p1, Lcom/k/a/ax;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b(Lcom/k/a/ax;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/k/a/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v1, p1, Lcom/k/a/ax;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

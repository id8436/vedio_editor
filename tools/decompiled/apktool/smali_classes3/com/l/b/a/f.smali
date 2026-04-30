.class public Lcom/l/b/a/f;
.super Ljava/io/FilterOutputStream;
.source "LineOutputStream.java"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/l/b/a/f;->a:[B

    .line 49
    sget-object v0, Lcom/l/b/a/f;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 50
    sget-object v0, Lcom/l/b/a/f;->a:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/l/b/a/f;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/l/b/a/f;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/l/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/l/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 61
    iget-object v0, p0, Lcom/l/b/a/f;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/l/b/a/f;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

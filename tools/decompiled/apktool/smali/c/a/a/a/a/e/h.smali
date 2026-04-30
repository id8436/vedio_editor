.class public interface abstract Lc/a/a/a/a/e/h;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final a:Lc/a/a/a/a/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lc/a/a/a/a/e/i;

    invoke-direct {v0}, Lc/a/a/a/a/e/i;-><init>()V

    sput-object v0, Lc/a/a/a/a/e/h;->a:Lc/a/a/a/a/e/h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

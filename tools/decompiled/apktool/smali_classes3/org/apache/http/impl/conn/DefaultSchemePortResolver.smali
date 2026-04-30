.class public Lorg/apache/http/impl/conn/DefaultSchemePortResolver;
.super Ljava/lang/Object;
.source "DefaultSchemePortResolver.java"

# interfaces
.implements Lorg/apache/http/conn/SchemePortResolver;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/apache/http/HttpHost;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 46
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/16 v0, 0x50

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const/16 v0, 0x1bb

    goto :goto_0

    .line 57
    :cond_2
    new-instance v1, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " protocol is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

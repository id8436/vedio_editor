.class Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "NetworkControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 72
    :goto_0
    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 69
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 70
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v2, "disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;->DISABLED:Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;

    .line 84
    :goto_1
    if-nez v1, :cond_2

    .line 85
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 88
    :cond_2
    return-object v0

    .line 78
    :cond_3
    const-string/jumbo v2, "enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;->ENABLED:Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;

    goto :goto_1

    .line 82
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$NetworkControlPolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string/jumbo v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    const-string/jumbo v0, "enabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 37
    check-cast p1, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NetworkControlPolicy;Lcom/d/a/a/g;)V

    return-void
.end method

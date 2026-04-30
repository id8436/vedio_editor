.class Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingLinkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 77
    :goto_0
    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 74
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    const-string/jumbo v2, "default_private"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->DEFAULT_PRIVATE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    .line 92
    :goto_1
    if-nez v1, :cond_2

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 96
    :cond_2
    return-object v0

    .line 83
    :cond_3
    const-string/jumbo v2, "default_public"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    goto :goto_1

    .line 86
    :cond_4
    const-string/jumbo v2, "only_private"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->ONLY_PRIVATE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    goto :goto_1

    .line 90
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

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
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$SharingLinkPolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const-string/jumbo v0, "default_private"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_1
    const-string/jumbo v0, "default_public"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_2
    const-string/jumbo v0, "only_private"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 38
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;Lcom/d/a/a/g;)V

    return-void
.end method

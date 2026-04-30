.class Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedLinkCreatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v2, "default_public"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 106
    :goto_1
    if-nez v1, :cond_2

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 110
    :cond_2
    return-object v0

    .line 97
    :cond_3
    const-string/jumbo v2, "default_team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    goto :goto_1

    .line 100
    :cond_4
    const-string/jumbo v2, "team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    goto :goto_1

    .line 104
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

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
    .line 52
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$1;->$SwitchMap$com$dropbox$core$v2$teampolicies$SharedLinkCreatePolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string/jumbo v0, "default_public"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string/jumbo v0, "default_team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string/jumbo v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 57
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
    .line 52
    check-cast p1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;Lcom/d/a/a/g;)V

    return-void
.end method

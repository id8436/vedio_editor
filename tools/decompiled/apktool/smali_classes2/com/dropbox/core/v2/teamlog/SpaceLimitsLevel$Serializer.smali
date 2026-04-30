.class Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SpaceLimitsLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 79
    :goto_0
    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 77
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v2, "generous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->GENEROUS:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    .line 97
    :goto_1
    if-nez v1, :cond_2

    .line 98
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 101
    :cond_2
    return-object v0

    .line 85
    :cond_3
    const-string/jumbo v2, "moderate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 86
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->MODERATE:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    goto :goto_1

    .line 88
    :cond_4
    const-string/jumbo v2, "no_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->NO_LIMIT:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    goto :goto_1

    .line 91
    :cond_5
    const-string/jumbo v2, "strict"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->STRICT:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    goto :goto_1

    .line 95
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->OTHER:Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

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
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$1;->$SwitchMap$com$dropbox$core$v2$teamlog$SpaceLimitsLevel:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const-string/jumbo v0, "generous"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_1
    const-string/jumbo v0, "moderate"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_2
    const-string/jumbo v0, "no_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_3
    const-string/jumbo v0, "strict"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 36
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SpaceLimitsLevel;Lcom/d/a/a/g;)V

    return-void
.end method

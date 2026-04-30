.class Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InsufficientQuotaAmounts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 139
    .line 140
    if-nez p2, :cond_9

    .line 141
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 142
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    if-nez v0, :cond_8

    move-object v4, v6

    move-object v2, v6

    .line 148
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 151
    const-string/jumbo v1, "space_needed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v4

    move-object v2, v0

    move-object v0, v6

    :goto_2
    move-object v6, v0

    move-object v4, v1

    .line 163
    goto :goto_1

    .line 154
    :cond_0
    const-string/jumbo v1, "space_shortage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 157
    :cond_1
    const-string/jumbo v1, "space_left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v4

    goto :goto_2

    .line 161
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v6

    move-object v1, v4

    goto :goto_2

    .line 164
    :cond_3
    if-nez v2, :cond_4

    .line 165
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"space_needed\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    if-nez v4, :cond_5

    .line 168
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"space_shortage\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_5
    if-nez v6, :cond_6

    .line 171
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"space_left\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    new-instance v1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;-><init>(JJJ)V

    .line 178
    if-nez p2, :cond_7

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 181
    :cond_7
    return-object v1

    .line 176
    :cond_8
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 125
    :cond_0
    const-string/jumbo v0, "space_needed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 127
    const-string/jumbo v0, "space_shortage"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 129
    const-string/jumbo v0, "space_left"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 131
    if-nez p3, :cond_1

    .line 132
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 134
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 117
    check-cast p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/d/a/a/g;Z)V

    return-void
.end method

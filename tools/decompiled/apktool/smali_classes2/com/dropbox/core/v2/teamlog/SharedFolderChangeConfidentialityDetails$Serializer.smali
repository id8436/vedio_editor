.class Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFolderChangeConfidentialityDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 188
    .line 189
    if-nez p2, :cond_a

    .line 190
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 191
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    if-nez v0, :cond_9

    move-object v5, v6

    move-object v4, v6

    move-object v2, v6

    .line 198
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_4

    .line 199
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 201
    const-string/jumbo v1, "target_asset_index"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_2
    move-object v2, v0

    .line 216
    goto :goto_1

    .line 204
    :cond_0
    const-string/jumbo v1, "original_folder_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v2

    goto :goto_2

    .line 207
    :cond_1
    const-string/jumbo v1, "new_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/Confidentiality;

    move-result-object v5

    move-object v0, v2

    goto :goto_2

    .line 210
    :cond_2
    const-string/jumbo v1, "previous_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/Confidentiality;

    move-object v6, v0

    move-object v0, v2

    goto :goto_2

    .line 214
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v2

    goto :goto_2

    .line 217
    :cond_4
    if-nez v2, :cond_5

    .line 218
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"target_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_5
    if-nez v4, :cond_6

    .line 221
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"original_folder_name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_6
    if-nez v5, :cond_7

    .line 224
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_7
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/Confidentiality;Lcom/dropbox/core/v2/teamlog/Confidentiality;)V

    .line 231
    if-nez p2, :cond_8

    .line 232
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 234
    :cond_8
    return-object v1

    .line 229
    :cond_9
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

    :cond_a
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
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p3, :cond_0

    .line 168
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 170
    :cond_0
    const-string/jumbo v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 172
    const-string/jumbo v0, "original_folder_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 174
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/Confidentiality;Lcom/d/a/a/g;)V

    .line 176
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Confidentiality$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 180
    :cond_1
    if-nez p3, :cond_2

    .line 181
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 183
    :cond_2
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
    .line 162
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method

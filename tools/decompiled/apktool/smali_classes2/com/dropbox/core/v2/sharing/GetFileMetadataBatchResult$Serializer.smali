.class Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetFileMetadataBatchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 151
    .line 152
    if-nez p2, :cond_7

    .line 153
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 154
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 159
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 162
    const-string/jumbo v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 171
    goto :goto_1

    .line 165
    :cond_0
    const-string/jumbo v3, "result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult;

    move-result-object v0

    move-object v1, v2

    goto :goto_2

    .line 169
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 172
    :cond_2
    if-nez v2, :cond_3

    .line 173
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"file\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    if-nez v1, :cond_4

    .line 176
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"result\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult;)V

    .line 183
    if-nez p2, :cond_5

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 186
    :cond_5
    return-object v0

    .line 181
    :cond_6
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

    :cond_7
    move-object v0, v1

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
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 136
    if-nez p3, :cond_0

    .line 137
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 139
    :cond_0
    const-string/jumbo v0, "file"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;->file:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 141
    const-string/jumbo v0, "result"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;->result:Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataIndividualResult;Lcom/d/a/a/g;)V

    .line 143
    if-nez p3, :cond_1

    .line 144
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 146
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
    .line 131
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;Lcom/d/a/a/g;Z)V

    return-void
.end method

.class Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PaperDocExportResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/PaperDocExportResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 169
    .line 170
    if-nez p2, :cond_b

    .line 171
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 172
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    if-nez v0, :cond_a

    move-object v4, v6

    move-object v3, v6

    move-object v2, v6

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_4

    .line 180
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 182
    const-string/jumbo v1, "owner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object v0, v4

    :goto_2
    move-object v4, v0

    .line 197
    goto :goto_1

    .line 185
    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v4

    goto :goto_2

    .line 188
    :cond_1
    const-string/jumbo v1, "revision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_2

    .line 191
    :cond_2
    const-string/jumbo v1, "mime_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    move-object v0, v4

    goto :goto_2

    .line 195
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v4

    goto :goto_2

    .line 198
    :cond_4
    if-nez v2, :cond_5

    .line 199
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"owner\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_5
    if-nez v3, :cond_6

    .line 202
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"title\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_6
    if-nez v4, :cond_7

    .line 205
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"revision\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_7
    if-nez v6, :cond_8

    .line 208
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"mime_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_8
    new-instance v1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/paper/PaperDocExportResult;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 215
    if-nez p2, :cond_9

    .line 216
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 218
    :cond_9
    return-object v1

    .line 213
    :cond_a
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

    :cond_b
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
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/PaperDocExportResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperDocExportResult;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p3, :cond_0

    .line 151
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 153
    :cond_0
    const-string/jumbo v0, "owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 155
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 157
    const-string/jumbo v0, "revision"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 159
    const-string/jumbo v0, "mime_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 161
    if-nez p3, :cond_1

    .line 162
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 164
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
    .line 145
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocExportResult;Lcom/d/a/a/g;Z)V

    return-void
.end method

.class Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListFolderLongpollArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ListFolderLongpollArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ListFolderLongpollArg;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 172
    .line 173
    if-nez p2, :cond_6

    .line 174
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 175
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    if-nez v0, :cond_5

    .line 179
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 180
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 183
    const-string/jumbo v3, "cursor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 192
    goto :goto_1

    .line 186
    :cond_0
    const-string/jumbo v3, "timeout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v2

    goto :goto_2

    .line 190
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 193
    :cond_2
    if-nez v2, :cond_3

    .line 194
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"cursor\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;J)V

    .line 201
    if-nez p2, :cond_4

    .line 202
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 204
    :cond_4
    return-object v0

    .line 199
    :cond_5
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

    :cond_6
    move-object v0, v2

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
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p3, :cond_0

    .line 158
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 160
    :cond_0
    const-string/jumbo v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 162
    const-string/jumbo v0, "timeout"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;->timeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 164
    if-nez p3, :cond_1

    .line 165
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 167
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
    .line 152
    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;Lcom/d/a/a/g;Z)V

    return-void
.end method

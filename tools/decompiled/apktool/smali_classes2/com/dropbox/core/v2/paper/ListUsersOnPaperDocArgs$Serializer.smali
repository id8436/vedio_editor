.class Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListUsersOnPaperDocArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 274
    .line 275
    if-nez p2, :cond_7

    .line 276
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 277
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    if-nez v0, :cond_6

    .line 281
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 282
    sget-object v1, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;->SHARED:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    .line 283
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 284
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 286
    const-string/jumbo v4, "doc_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 298
    goto :goto_1

    .line 289
    :cond_0
    const-string/jumbo v4, "limit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 292
    :cond_1
    const-string/jumbo v4, "filter_by"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 296
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 299
    :cond_3
    if-nez v3, :cond_4

    .line 300
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"doc_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;ILcom/dropbox/core/v2/paper/UserOnPaperDocFilter;)V

    .line 307
    if-nez p2, :cond_5

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 310
    :cond_5
    return-object v0

    .line 305
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
    move-object v0, v3

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
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 257
    if-nez p3, :cond_0

    .line 258
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 260
    :cond_0
    const-string/jumbo v0, "doc_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 262
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 264
    const-string/jumbo v0, "filter_by"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->filterBy:Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter$Serializer;->serialize(Lcom/dropbox/core/v2/paper/UserOnPaperDocFilter;Lcom/d/a/a/g;)V

    .line 266
    if-nez p3, :cond_1

    .line 267
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 269
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
    .line 252
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;Lcom/d/a/a/g;Z)V

    return-void
.end method

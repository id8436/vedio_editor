.class Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyGroupTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    .line 166
    if-nez p2, :cond_9

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 174
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 175
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 177
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
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

    .line 189
    goto :goto_1

    .line 180
    :cond_0
    const-string/jumbo v4, "description"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 183
    :cond_1
    const-string/jumbo v4, "fields"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 187
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 190
    :cond_3
    if-nez v3, :cond_4

    .line 191
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_4
    if-nez v2, :cond_5

    .line 194
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"description\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_5
    if-nez v1, :cond_6

    .line 197
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"fields\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 204
    if-nez p2, :cond_7

    .line 205
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 207
    :cond_7
    return-object v0

    .line 202
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
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p3, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 151
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 153
    const-string/jumbo v0, "description"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 155
    const-string/jumbo v0, "fields"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;->fields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 157
    if-nez p3, :cond_1

    .line 158
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 160
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
    .line 143
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/PropertyGroupTemplate;Lcom/d/a/a/g;Z)V

    return-void
.end method

.class public Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "AddPropertiesArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    .line 145
    if-nez p2, :cond_7

    .line 146
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 147
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    .line 152
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 155
    const-string/jumbo v3, "path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
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

    .line 164
    goto :goto_1

    .line 158
    :cond_0
    const-string/jumbo v3, "property_groups"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    goto :goto_2

    .line 162
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 165
    :cond_2
    if-nez v2, :cond_3

    .line 166
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    if-nez v1, :cond_4

    .line 169
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"property_groups\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    if-nez p2, :cond_5

    .line 177
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 179
    :cond_5
    return-object v0

    .line 174
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
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p3, :cond_0

    .line 130
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 132
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 134
    const-string/jumbo v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 136
    if-nez p3, :cond_1

    .line 137
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 139
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
    .line 124
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;Lcom/d/a/a/g;Z)V

    return-void
.end method

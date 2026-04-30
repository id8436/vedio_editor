.class Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FoldersContainingPaperDoc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 223
    .line 224
    if-nez p2, :cond_5

    .line 225
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 226
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    if-nez v0, :cond_4

    move-object v2, v1

    .line 231
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 234
    const-string/jumbo v3, "folder_sharing_policy_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    sget-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 243
    goto :goto_1

    .line 237
    :cond_0
    const-string/jumbo v3, "folders"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/dropbox/core/v2/paper/Folder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Folder$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    goto :goto_2

    .line 241
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 244
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;-><init>(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;Ljava/util/List;)V

    .line 249
    if-nez p2, :cond_3

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 252
    :cond_3
    return-object v0

    .line 247
    :cond_4
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

    :cond_5
    move-object v0, v1

    goto :goto_0
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
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p3, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 207
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    if-eqz v0, :cond_1

    .line 208
    const-string/jumbo v0, "folder_sharing_policy_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 211
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 212
    const-string/jumbo v0, "folders"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/dropbox/core/v2/paper/Folder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Folder$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 215
    :cond_2
    if-nez p3, :cond_3

    .line 216
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 218
    :cond_3
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
    .line 199
    check-cast p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->serialize(Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;Lcom/d/a/a/g;Z)V

    return-void
.end method

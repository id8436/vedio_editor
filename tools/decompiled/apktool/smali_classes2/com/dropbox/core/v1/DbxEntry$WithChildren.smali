.class public final Lcom/dropbox/core/v1/DbxEntry$WithChildren;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildren;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildren;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final entry:Lcom/dropbox/core/v1/DbxEntry;

.field public final hash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 687
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren$2;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 673
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    .line 675
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 726
    const-string/jumbo v0, "hash"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 727
    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/Iterable;)Lcom/dropbox/core/util/DumpWriter;

    .line 728
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$WithChildren;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 705
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    if-nez v1, :cond_0

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 708
    :cond_4
    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 700
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->equals(Lcom/dropbox/core/v1/DbxEntry$WithChildren;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 717
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 718
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 719
    return v0

    :cond_1
    move v0, v1

    .line 717
    goto :goto_0
.end method

.class public final Lcom/dropbox/core/json/JsonReader$FieldMapping;
.super Ljava/lang/Object;
.source "JsonReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    const-class v0, Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/json/JsonReader$FieldMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    sget-boolean v0, Lcom/dropbox/core/json/JsonReader$FieldMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping;->fields:Ljava/util/HashMap;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/dropbox/core/json/JsonReader$1;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/dropbox/core/json/JsonReader$FieldMapping;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 420
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

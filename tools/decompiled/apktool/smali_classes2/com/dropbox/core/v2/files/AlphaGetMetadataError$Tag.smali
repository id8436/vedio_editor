.class public final enum Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
.super Ljava/lang/Enum;
.source "AlphaGetMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

.field public static final enum PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    const-string/jumbo v1, "PATH"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    const-string/jumbo v1, "PROPERTIES_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    return-object v0
.end method

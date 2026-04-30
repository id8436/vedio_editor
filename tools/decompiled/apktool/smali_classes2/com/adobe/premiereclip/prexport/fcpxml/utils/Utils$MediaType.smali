.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

.field public static final enum audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

.field public static final enum video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    const-string/jumbo v1, "video"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    const-string/jumbo v1, "audio"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->numVal:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->numVal:I

    return v0
.end method

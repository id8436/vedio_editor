.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

.field public static final enum square:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    const-string/jumbo v1, "square"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->square:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->square:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->numVal:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->numVal:I

    return v0
.end method

.class public final Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# instance fields
.field private aperture:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private cameraMake:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private cameraModel:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorSpace:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private exposureBias:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private exposureMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private exposureTime:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private flashUsed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private focalLength:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isoSpeed:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private lens:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxApertureValue:Ljava/lang/Float;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private meteringMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private rotation:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sensor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private subjectDistance:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private whiteBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2022
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2541
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 1

    .prologue
    .line 2535
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getAperture()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->aperture:Ljava/lang/Float;

    return-object v0
.end method

.method public getCameraMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraMake:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraModel:Ljava/lang/String;

    return-object v0
.end method

.method public getColorSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->colorSpace:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureBias()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureBias:Ljava/lang/Float;

    return-object v0
.end method

.method public getExposureMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureMode:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureTime()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureTime:Ljava/lang/Float;

    return-object v0
.end method

.method public getFlashUsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->flashUsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFocalLength()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->focalLength:Ljava/lang/Float;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsoSpeed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->isoSpeed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLens()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->lens:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    return-object v0
.end method

.method public getMaxApertureValue()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->maxApertureValue:Ljava/lang/Float;

    return-object v0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->meteringMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->rotation:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSensor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->sensor:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectDistance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->subjectDistance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->whiteBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2022
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2022
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 1

    .prologue
    .line 2530
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object v0
.end method

.method public setAperture(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->aperture:Ljava/lang/Float;

    .line 2185
    return-object p0
.end method

.method public setCameraMake(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraMake:Ljava/lang/String;

    .line 2202
    return-object p0
.end method

.method public setCameraModel(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->cameraModel:Ljava/lang/String;

    .line 2219
    return-object p0
.end method

.method public setColorSpace(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->colorSpace:Ljava/lang/String;

    .line 2236
    return-object p0
.end method

.method public setExposureBias(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureBias:Ljava/lang/Float;

    .line 2253
    return-object p0
.end method

.method public setExposureMode(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureMode:Ljava/lang/String;

    .line 2270
    return-object p0
.end method

.method public setExposureTime(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2286
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->exposureTime:Ljava/lang/Float;

    .line 2287
    return-object p0
.end method

.method public setFlashUsed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->flashUsed:Ljava/lang/Boolean;

    .line 2304
    return-object p0
.end method

.method public setFocalLength(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->focalLength:Ljava/lang/Float;

    .line 2321
    return-object p0
.end method

.method public setHeight(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->height:Ljava/lang/Integer;

    .line 2338
    return-object p0
.end method

.method public setIsoSpeed(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->isoSpeed:Ljava/lang/Integer;

    .line 2355
    return-object p0
.end method

.method public setLens(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2371
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->lens:Ljava/lang/String;

    .line 2372
    return-object p0
.end method

.method public setLocation(Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->location:Lcom/google/api/services/drive/model/File$ImageMediaMetadata$Location;

    .line 2389
    return-object p0
.end method

.method public setMaxApertureValue(Ljava/lang/Float;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->maxApertureValue:Ljava/lang/Float;

    .line 2406
    return-object p0
.end method

.method public setMeteringMode(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->meteringMode:Ljava/lang/String;

    .line 2423
    return-object p0
.end method

.method public setRotation(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2439
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->rotation:Ljava/lang/Integer;

    .line 2440
    return-object p0
.end method

.method public setSensor(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->sensor:Ljava/lang/String;

    .line 2457
    return-object p0
.end method

.method public setSubjectDistance(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->subjectDistance:Ljava/lang/Integer;

    .line 2474
    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->time:Ljava/lang/String;

    .line 2491
    return-object p0
.end method

.method public setWhiteBalance(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->whiteBalance:Ljava/lang/String;

    .line 2508
    return-object p0
.end method

.method public setWidth(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 0

    .prologue
    .line 2524
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$ImageMediaMetadata;->width:Ljava/lang/Integer;

    .line 2525
    return-object p0
.end method

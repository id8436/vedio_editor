package com.google.gdata.data.appsforyourdomain;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public enum AppsForYourDomainErrorCode {
    UnknownError(1000),
    ServerBusy(1001),
    UserDeletedRecently(1100),
    UserSuspended(1101),
    DomainUserLimitExceeded(1200),
    DomainAliasLimitExceeded(1201),
    DomainSuspended(1202),
    DomainFeatureUnavailable(1203),
    EntityExists(1300),
    EntityDoesNotExist(1301),
    EntityNameIsReserved(1302),
    EntityNameNotValid(1303),
    EntityCannotBeModified(1304),
    EntityCannotContainCycle(1305),
    EntityHasMembersCannotDelete(1306),
    EntityQuotaLimitReached(1307),
    InvalidGivenName(BehanceSDKConstants.IMAGE_MODULE_FULL_BLEED_MIN_WIDTH),
    InvalidFamilyName(1401),
    InvalidPassword(1402),
    InvalidUsername(1403),
    InvalidHashFunctionName(1404),
    InvalidHashDigestLength(1405),
    InvalidEmailAddress(1406),
    InvalidQueryParameterValue(1407),
    InvalidSsoSigningKey(1408),
    InvalidEncryptionPublicKey(1409),
    FeatureUnavailableForUser(1410),
    EncryptionPublicKeyInvalidFormat(1411),
    EncryptionPublicKeyInvalidType(1412),
    EncryptionPublicKeyHasManyUserIds(1413),
    TooManyRecipientsOnEmailList(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED),
    TooManyNicknamesForUser(1501),
    DuplicateDestinations(1601),
    TooManyDestinations(1602),
    InvalidRouteAddress(1603),
    GroupCannotContainCycle(1700),
    InvalidGroupPermissions(1701),
    InvalidDomainEdition(1800),
    InvalidValue(1801),
    DeletePartialFailure(1802);

    private static Map<Integer, AppsForYourDomainErrorCode> errorMap = makeErrorMap();
    private int errorCode;

    private static Map<Integer, AppsForYourDomainErrorCode> makeErrorMap() {
        HashMap map = new HashMap();
        for (AppsForYourDomainErrorCode appsForYourDomainErrorCode : values()) {
            map.put(Integer.valueOf(appsForYourDomainErrorCode.errorCode), appsForYourDomainErrorCode);
        }
        return Collections.unmodifiableMap(map);
    }

    AppsForYourDomainErrorCode(int i) {
        this.errorCode = i;
    }

    @Override // java.lang.Enum
    public String toString() {
        return name() + "(" + this.errorCode + ")";
    }

    public int getErrorCodeAsInt() {
        return this.errorCode;
    }

    public static AppsForYourDomainErrorCode getEnumFromInt(Integer num) {
        return errorMap.get(num);
    }
}

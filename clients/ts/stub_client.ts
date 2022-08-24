import { AuthenticationServiceClient } from "./ts_out/Authentication_serviceServiceClientPb";
import { LoginUserResponse } from "./ts_out/authentication_service_pb";
import { ResponseMeta, ApiToken } from "./ts_out/common_pb";
import { v4 as uuidv4 } from 'uuid';

export class GrpcClient {
    private authentication: AuthenticationServiceClient;
    private token: string;

    constructor(host: string) {
        this.authentication = new AuthenticationServiceClient(host, null, null);
        this.token = "";
    }

    setTokenValue(token: string) {
        this.token = token;
    }

    getApiToken() {
        let api_token = new ApiToken();
        api_token.setValue(this.token);

        return api_token
    }

    login(): LoginUserResponse {
        let meta = new ResponseMeta();
        meta.setStatus(ResponseMeta.Status.SUCCESS);
        meta.setOriginRequestId(uuidv4());

        let response = new LoginUserResponse();
        response.setMeta(meta);
        response.setToken(this.getApiToken());

        return response
    }
}

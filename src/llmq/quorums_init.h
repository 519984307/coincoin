// Copyright (c) 2018 The Dash Core developers
// Copyright (c) 2018-2019 The GeekCash developers
// Copyright (c) 2022      The CoinCoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef COINCOIN_QUORUMS_INIT_H
#define COINCOIN_QUORUMS_INIT_H

class CEvoDB;

namespace llmq
{

void InitLLMQSystem(CEvoDB& evoDb);
void DestroyLLMQSystem();

}

#endif //COINCOIN_QUORUMS_INIT_H

const { ethers } = require('ethers');

// Replace with your Ethereum node's URL
const nodeUrl = 'http://139.180.157.111:8545';

// Create a provider connected to your Ethereum node
const provider = new ethers.providers.JsonRpcProvider(nodeUrl);

const makeRequest = async () => {
  try {
    // Use the getNodeInfo method to get information about the connected node
    const version = await provider.send('web3_clientVersion', []);
    console.log(`Node version: ${version}`);
  } catch (error) {
    console.error('Error making request:', error);
  }
};

const executeRequests = async (requestCount) => {
  const requests = Array.from({ length: requestCount }, () => makeRequest());

  try {
    await Promise.all(requests);
  } catch (error) {
    console.error('Error executing requests:', error);
  }
};

// Adjust the request count based on your requirements
const requestCount = 100000;

// Execute requests every second
setInterval(() => {
  executeRequests(requestCount);
}, 1000);
